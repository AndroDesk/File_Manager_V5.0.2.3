.class Lcom/android/fileexplorer/filemanager/FileOperationManager$3;
.super Landroid/os/CountDownTimer;
.source "FileOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/filemanager/FileOperationManager;->deleteFiles(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field public final synthetic val$positiveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;JJLandroid/widget/Button;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$3;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    iput-object p6, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$3;->val$positiveButton:Landroid/widget/Button;

    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 8
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$3;->val$positiveButton:Landroid/widget/Button;

    .line 3
    const v1, 0x7f110116

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$3;->val$positiveButton:Landroid/widget/Button;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 15
    return-void
.end method

.method public onTick(J)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$3;->val$positiveButton:Landroid/widget/Button;

    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const v2, 0x7f110116

    .line 9
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v2, v1, v3

    .line 16
    const-wide/16 v4, 0x3e8

    .line 18
    div-long/2addr p1, v4

    .line 19
    const-wide/16 v4, 0x1

    .line 21
    add-long/2addr p1, v4

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x1

    .line 27
    aput-object p1, v1, p2

    .line 29
    const-string p1, "%s(%ss)"

    .line 31
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$3;->val$positiveButton:Landroid/widget/Button;

    .line 40
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 43
    return-void
.end method
