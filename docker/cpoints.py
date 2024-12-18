from point_cloud.core import calculate_C_points

input_data_file = "/data/cdd.txt"
output_data_file = "/data/result_C_points.txt"
output_plot_file = "/data/result_plot.png"

calculate_C_points(input_data_file, output_data_file, output_plot_file)
