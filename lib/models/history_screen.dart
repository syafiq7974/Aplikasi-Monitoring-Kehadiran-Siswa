import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/attendance_provider.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AttendanceProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Kehadiran'),
      ),
      body: provider.attendanceHistory.isEmpty
          ? Center(child: Text('Tidak ada riwayat kehadiran.'))
          : ListView.builder(
              itemCount: provider.attendanceHistory.length,
              itemBuilder: (ctx, index) {
                final history = provider.attendanceHistory[index];
                return ListTile(
                  title: Text(
                    'Tanggal: ${history['date']}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Hadir: ${history['present']} - Tidak Hadir: ${history['absent']}',
                  ),
                );
              },
            ),
    );
  }
}
