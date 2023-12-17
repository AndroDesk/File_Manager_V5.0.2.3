.class Lcom/android/fileexplorer/view/PadFabExpandView$SavedInfo;
.super Ljava/lang/Object;
.source "PadFabExpandView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/PadFabExpandView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedInfo"
.end annotation


# instance fields
.field public isUp:Z

.field public pos:I

.field public viewType:I


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/view/PadFabExpandView$SavedInfo;->viewType:I

    .line 6
    iput p2, p0, Lcom/android/fileexplorer/view/PadFabExpandView$SavedInfo;->pos:I

    .line 8
    iput-boolean p3, p0, Lcom/android/fileexplorer/view/PadFabExpandView$SavedInfo;->isUp:Z

    .line 10
    return-void
.end method
