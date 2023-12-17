.class public Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;
.super Ljava/lang/Object;
.source "ScaleAndTranslate.java"


# instance fields
.field public scale:F

.field public vTranslate:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(FLandroid/graphics/PointF;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->scale:F

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    .line 8
    return-void
.end method
