.class public Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;
.super Ljava/lang/Object;
.source "ScaleAndTranslate.java"


# instance fields
.field public scale:F

.field public vTranslate:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/PointF;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->scale:F

    iput-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    return-void
.end method
