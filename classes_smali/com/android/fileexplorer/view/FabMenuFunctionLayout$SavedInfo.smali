.class Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;
.super Ljava/lang/Object;
.source "FabMenuFunctionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/FabMenuFunctionLayout;
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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;->viewType:I

    iput p2, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;->pos:I

    iput-boolean p3, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$SavedInfo;->isUp:Z

    return-void
.end method
