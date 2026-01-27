import 'package:flutter/material.dart';
import 'package:train/core/constants/appColorsConstants.dart';

class CategoryUiModel {
  final String title;
  final IconData icon;

  const CategoryUiModel({required this.title, required this.icon});
}

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  static const _categories = <CategoryUiModel>[
    CategoryUiModel(
      title: 'Man Shirt',
      icon: Icons.checkroom_outlined,
    ),
    CategoryUiModel(
      title: 'Dress',
      icon: Icons.shopping_bag_outlined,
    ),
    CategoryUiModel(title: 'Man Work', icon: Icons.work_outline),
    CategoryUiModel(
      title: 'Woman Bag',
      icon: Icons.workspaces_outline,
    ),
    CategoryUiModel(title: 'Man', icon: Icons.person_outline),
  ];

  @override
  Widget build(BuildContext context) {
    final primary = AppColors.blue;
    final border = AppColors.gray;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row
          Row(
            children: [
              const Text(
                'Category',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  // TODO: navigate to categories page
                },
                child: Text(
                  'More Category',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: primary,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          // Horizontal categories
          SizedBox(
            height: 110,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: _categories.length,
              separatorBuilder: (_, __) => const SizedBox(width: 18),
              itemBuilder: (context, index) {
                final item = _categories[index];
                return _CategoryItem(
                  title: item.title,
                  icon: item.icon,
                  primary: primary,
                  border: border,
                  onTap: () {
                    // TODO: category click
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  const _CategoryItem({
    required this.title,
    required this.icon,
    required this.primary,
    required this.border,
    required this.onTap,
  });

  final String title;
  final IconData icon;
  final Color primary;
  final Color border;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: SizedBox(
        width: 88,
        child: Column(
          children: [
            Container(
              width: 74,
              height: 74,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: border, width: 1),
              ),
              alignment: Alignment.center,
              child: Icon(icon, color: primary, size: 30),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: Colors.black.withOpacity(0.55),
                height: 1.2,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
