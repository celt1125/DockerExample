import numpy as np

if __name__ == '__main__':
    mat = np.random.rand(2,3)
    print(mat)
    np.savez_compressed('randomMatrix.npz', reconstruction=mat)