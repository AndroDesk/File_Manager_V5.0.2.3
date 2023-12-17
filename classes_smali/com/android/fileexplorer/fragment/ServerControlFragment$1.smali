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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/ServerControlFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment$1;->this$0:Lcom/android/fileexplorer/fragment/ServerControlFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment$1;->this$0:Lcom/android/fileexplorer/fragment/ServerControlFragment;

    .line 3
    const/4 p2, 0x1

    .line 4
    invoke-static {p1, p2}, Lcom/android/fileexplorer/fragment/ServerControlFragment;->access$100(Lcom/android/fileexplorer/fragment/ServerControlFragment;Z)V

    .line 7
    return-void
.end method
