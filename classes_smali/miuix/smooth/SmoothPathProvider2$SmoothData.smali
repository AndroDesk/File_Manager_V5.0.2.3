.class public Lmiuix/smooth/SmoothPathProvider2$SmoothData;
.super Ljava/lang/Object;
.source "SmoothPathProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/smooth/SmoothPathProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmoothData"
.end annotation


# instance fields
.field public bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

.field public bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

.field public height:F

.field public ksi:F

.field public smooth:D

.field public topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

.field public topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

.field public width:F


# direct methods
.method public constructor <init>(FFDF)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->width:F

    .line 6
    iput p2, p0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->height:F

    .line 8
    iput-wide p3, p0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->smooth:D

    .line 10
    iput p5, p0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->ksi:F

    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 15
    iput-object p1, p0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 17
    iput-object p1, p0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 19
    iput-object p1, p0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    .line 21
    return-void
.end method
