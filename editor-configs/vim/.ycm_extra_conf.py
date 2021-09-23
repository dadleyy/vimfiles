def Settings(**kwargs):
    return {
        'ls': {
            'rust-analyzer.checkOnSave.enable': False,
            'rust-analyzer.checkOnSave.allTargets': False,
            'rust-analyzer.cargo.target': 'x86_64-apple-darwin',
        },
        'config_sections': {
            'rust-analyzer': {
                'rust-analyzer.cargo.target': 'x86_64-apple-darwin',
                'cargo.target': 'x86_64-apple-darwin',
                'rust-analyzer.checkOnSave.enable': False,
                'rust-analyzer.checkOnSave.allTargets': False,
                'checkOnSave.allTargets': False,
                'checkOnSave.enable': False,
            }
        }
    }
