.class public Lcom/android/fileexplorer/view/GuideDialog$PageInfo;
.super Ljava/lang/Object;
.source "GuideDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/GuideDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageInfo"
.end annotation


# instance fields
.field private isLottieRes:Z

.field private messageResId:I

.field private resId:I


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;->resId:I

    .line 6
    iput p2, p0, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;->messageResId:I

    .line 8
    iput-boolean p3, p0, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;->isLottieRes:Z

    .line 10
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/GuideDialog$PageInfo;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;->isLottieRes:Z

    .line 3
    return p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/GuideDialog$PageInfo;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;->resId:I

    .line 3
    return p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/view/GuideDialog$PageInfo;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;->messageResId:I

    .line 3
    return p0
.end method
