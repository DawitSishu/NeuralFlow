import Image from "next/image"

export const Loader = () => {
  return (
    <div className="h-full flex flex-col gap-y-4 items-center justify-center">
      <div className="w-10 h-10 relative animate-spin">
        <Image
          alt="Logo"
          src="/logo.png"
          fill
        />
      </div>
      <p className="text-sm text-muted-foreground">
        NeuralFlow is thinking...
      </p>
    </div>
  );
};
// Add smooth loading animations - Mon Jul 21 17:57:10 EAT 2025
