from django.test import TestCase

# Create your tests here.


class TaskViewTest(TestCase):
    def test_view(self):
        response = self.client.get('/tasks/')
        self.assertEqual(response.status_code, 200)
