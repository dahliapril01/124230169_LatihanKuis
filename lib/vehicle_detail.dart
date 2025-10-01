import 'package:flutter/material.dart';
import 'vehicle-data.dart';

class VehicleDetailScreen extends StatelessWidget {
  final Vehicle daftar;
  const VehicleDetailScreen({super.key, required this.daftar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E2C),
        elevation: 0,
        title: Text(
          daftar.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                daftar.imageUrls[0],
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            const SizedBox(height: 20),

            Text(
              daftar.type,
              style: const TextStyle(
                color: Colors.blueAccent,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),

            Text(
              "Fuel Type: ${daftar.fuelType}",
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
            Text(
              "Engine: ${daftar.engine}",
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
            Text(
              "Price: ${daftar.price}",
              style: const TextStyle(
                color: Colors.greenAccent,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            const Text(
              "Description:",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              daftar.description,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 189, 0, 0),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Back",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
