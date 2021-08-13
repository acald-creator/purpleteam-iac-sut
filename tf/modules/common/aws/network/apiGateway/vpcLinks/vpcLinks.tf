// Copyright (C) 2017-2021 BinaryMist Limited. All rights reserved.

// This file is part of PurpleTeam.

// PurpleTeam is free software: you can redistribute it and/or modify
// it under the terms of the MIT License.

// PurpleTeam is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// MIT License for more details.

resource "aws_api_gateway_vpc_link" "sut_nlb" {
  name        = "sut_api_gateway_vpc_link_to_${var.aws_lb_name}"
  description = "SUT API Gateway VPC Link to ${var.aws_lb_name}"
  target_arns = [var.aws_lb_arn]
}
