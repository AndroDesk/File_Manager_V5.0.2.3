.class public Lmiuix/graphics/BitmapFactory$CropOption;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/graphics/BitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropOption"
.end annotation


# instance fields
.field public borderColor:I

.field public borderWidth:I

.field public rx:I

.field public ry:I

.field public srcBmpDrawingArea:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    iput p2, p0, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    iput p3, p0, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    iput p4, p0, Lmiuix/graphics/BitmapFactory$CropOption;->borderColor:I

    return-void
.end method

.method public constructor <init>(Lmiuix/graphics/BitmapFactory$CropOption;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    iput v0, p0, Lmiuix/graphics/BitmapFactory$CropOption;->rx:I

    iget v0, p1, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    iput v0, p0, Lmiuix/graphics/BitmapFactory$CropOption;->ry:I

    iget v0, p1, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    iput v0, p0, Lmiuix/graphics/BitmapFactory$CropOption;->borderWidth:I

    iget v0, p1, Lmiuix/graphics/BitmapFactory$CropOption;->borderColor:I

    iput v0, p0, Lmiuix/graphics/BitmapFactory$CropOption;->borderColor:I

    iget-object p1, p1, Lmiuix/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    iput-object p1, p0, Lmiuix/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    return-void
.end method