.class public final synthetic Lcom/android/fileexplorer/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/fileexplorer/PhoneMainActivityProxy;

.field public final synthetic b:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/fileexplorer/PhoneMainActivityProxy;Landroid/widget/LinearLayout;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/e;->a:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    iput-object p2, p0, Lcom/android/fileexplorer/e;->b:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/e;->a:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    iget-object v1, p0, Lcom/android/fileexplorer/e;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->a(Lcom/android/fileexplorer/PhoneMainActivityProxy;Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method
