import * as z from "zod";

export const formSchema = z.object({
  prompt: z.string().min(1, {
    message: "Prompt is required."
  }),
});
// Add conversation constants - Mon Jul 21 17:57:10 EAT 2025
