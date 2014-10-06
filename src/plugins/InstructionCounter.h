#include "core/Plugin.h"

namespace llvm
{
  class Function;
}

namespace oclgrind
{
  class InstructionCounter : public Plugin
  {
  public:
    InstructionCounter(Device *device) : Plugin(device){};

    virtual void instructionExecuted(const llvm::Instruction *instruction,
                                     const TypedValue& result);
    virtual void kernelBegin(const Kernel *kernel);
    virtual void kernelEnd(const Kernel *kernel);

    std::string getOpcodeName(unsigned opcode) const;
  private:
    std::vector<size_t> m_instructionCounts;
    std::vector<size_t> m_memopBytes;
    std::vector<const llvm::Function*> m_functions;
  };
}
