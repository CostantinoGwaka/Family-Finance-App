import 'package:family_finance_app/family_finance_app/ff_models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryItemCard extends StatelessWidget {
  final CategoryModel category;

  const CategoryItemCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    IconData typeIcon =
        category.type == 'income' ? Icons.arrow_downward : Icons.arrow_upward;
    Color typeColor = category.type == 'income' ? Colors.green : Colors.red;

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.category, size: 20, color: Colors.blueGrey),
                SizedBox(width: 6),
                Text(
                  category.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(typeIcon, color: typeColor, size: 18),
                SizedBox(width: 6),
                Text(
                  'Type: ${category.type}',
                  style: TextStyle(color: typeColor),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.person, color: Colors.grey, size: 18),
                SizedBox(width: 6),
                Text('User ID: ${category.userId}'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.calendar_today, color: Colors.grey, size: 18),
                SizedBox(width: 6),
                Text('Created: ${category.createdAt}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
