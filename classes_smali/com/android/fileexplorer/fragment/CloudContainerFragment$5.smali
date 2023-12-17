.class Lcom/android/fileexplorer/fragment/CloudContainerFragment$5;
.super Ljava/lang/Object;
.source "CloudContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/CloudContainerFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    new-instance p1, Lcom/android/fileexplorer/fragment/CloudContainerFragment$5$1;

    .line 3
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment$5$1;-><init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment$5;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [Ljava/lang/Void;

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    return-void
.end method
