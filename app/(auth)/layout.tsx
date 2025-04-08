const AuthLayout = ({
  children
}: {
  children: React.ReactNode;
}) => {
  return ( 
    <main className="h-full bg-[#111827] flex items-center justify-center">
      {children}
    </main>
  );
}
 
export default AuthLayout;// Improve auth layout styling - Mon Jul 21 17:57:09 EAT 2025
