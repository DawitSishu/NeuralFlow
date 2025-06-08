import Stripe from "stripe"

export const stripe = new Stripe(process.env.STRIPE_API_KEY!, {
  apiVersion: "2022-11-15",
  typescript: true,
});
// Configure Stripe client - Mon Jul 21 17:57:09 EAT 2025
