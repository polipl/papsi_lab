# Generated by Django 4.1.3 on 2022-11-11 14:25

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('DICTIONARY', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='TicketsPriority',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=20, null=True)),
            ],
            options={
                'verbose_name': 'Priorytet Ticketu',
                'verbose_name_plural': 'Priorytety Ticketów',
            },
        ),
        migrations.CreateModel(
            name='Tickets',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('short_description', models.CharField(blank=True, max_length=255, null=True)),
                ('description', models.TextField(blank=True, null=True)),
                ('create_date', models.DateTimeField(auto_now=True)),
                ('end_date', models.DateTimeField(blank=True, null=True)),
                ('priority', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='DICTIONARY.ticketspriority')),
            ],
        ),
    ]