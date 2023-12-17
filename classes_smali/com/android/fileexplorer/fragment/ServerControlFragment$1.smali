.class Lcom/android/fileexplorer/fragment/ServerControlFragment$1;
.super Ljava/lang/Object;
.source "ServerControlFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/ServerControlFragment;->showWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/ServerControlFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/ServerControlFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment$1;->this$0:Lcom/android/fileexplorer/fragment/ServerControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment$1;->this$0:Lcom/android/fileexplorer/fragment/ServerControlFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/fileexplorer/fragment/ServerControlFragment;->access$100(Lcom/android/fileexplorer/fragment/ServerControlFragment;Z)V

    return-void
.end method
