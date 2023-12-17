.class Lcom/android/fileexplorer/fragment/FileFragment$6;
.super Ljava/lang/Object;
.source "FileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/FileFragment;->getFileAmountAndShowLoading(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/FileFragment;

.field public final synthetic val$finalAmount:I


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$6;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/fragment/FileFragment$6;->val$finalAmount:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$6;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$6;->val$finalAmount:I

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$1000(Lcom/android/fileexplorer/fragment/FileFragment;I)V

    .line 8
    return-void
.end method
