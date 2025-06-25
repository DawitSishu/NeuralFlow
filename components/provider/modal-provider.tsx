"use client";

import { useEffect, useState } from "react";

import { ProModal } from "@/components/pro-modal";

export const ModalProvider = () => {
  const [isMounted, setIsMounted] = useState(false);

  useEffect(() => {
    setIsMounted(true);
  }, []);

  if (!isMounted) {
    return null;
  }

  return (
    <>
      <ProModal />
    </>
  );
};
// Improve modal handling - Mon Jul 21 17:57:10 EAT 2025
