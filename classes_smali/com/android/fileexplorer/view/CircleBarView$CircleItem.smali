.class public Lcom/android/fileexplorer/view/CircleBarView$CircleItem;
.super Ljava/lang/Object;
.source "CircleBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/CircleBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircleItem"
.end annotation


# instance fields
.field public color:I

.field public size:I

.field public start:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;->start:I

    .line 6
    iput p2, p0, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;->size:I

    .line 8
    iput p3, p0, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;->color:I

    .line 10
    return-void
.end method
