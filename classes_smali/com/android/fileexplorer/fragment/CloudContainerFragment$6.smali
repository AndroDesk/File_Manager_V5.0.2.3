.class Lcom/android/fileexplorer/fragment/CloudContainerFragment$6;
.super Ljava/lang/Object;
.source "CloudContainerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/CloudContainerFragment;->postCommonJobQueryRunnable()V
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
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$6;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$6;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$700(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V

    .line 6
    return-void
.end method
