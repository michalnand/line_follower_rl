import torch

def rms_loss(y_target, y_predicted):
    return ((y_target - y_predicted)**2).mean()

def dice_loss(y_target, y_predicted):
    numerator   = 2.0 * torch.sum(y_target * y_predicted, axis=(1,2,3))
    denominator = torch.sum(y_target + y_predicted, axis=(1,2,3))

    loss = 1.0 - numerator / denominator

    return loss.mean()

def binary_cross_entropy_loss(y_target, y_predicted):

    y_sig   = torch.sigmoid(y_predicted)
    loss    = -(y_target*torch.log(y_sig) + (1.0 - y_target)*torch.log(1.0 - y_sig))
    return loss.mean()

    