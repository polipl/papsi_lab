# Generated by Django 4.1.3 on 2022-11-11 14:26

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('DICTIONARY', '0002_ticketspriority_tickets'),
    ]

    operations = [
        migrations.AddField(
            model_name='tickets',
            name='create_user',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]
