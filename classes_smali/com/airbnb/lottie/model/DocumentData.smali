.class public Lcom/airbnb/lottie/model/DocumentData;
.super Ljava/lang/Object;
.source "DocumentData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/DocumentData$Justification;
    }
.end annotation


# instance fields
.field public final baselineShift:F

.field public final color:I

.field public final fontName:Ljava/lang/String;

.field public final justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

.field public final lineHeight:F

.field public final size:F

.field public final strokeColor:I

.field public final strokeOverFill:Z

.field public final strokeWidth:F

.field public final text:Ljava/lang/String;

.field public final tracking:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLcom/airbnb/lottie/model/DocumentData$Justification;IFFIIFZ)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 10
    iput-object p4, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 12
    iput p5, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 14
    iput p6, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 16
    iput p7, p0, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    .line 18
    iput p8, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 20
    iput p9, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    .line 22
    iput p10, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    .line 24
    iput-boolean p11, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 26
    return-void
.end method


# virtual methods
.method public hashCode()I
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 18
    int-to-float v0, v1

    .line 19
    iget v1, p0, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 21
    add-float/2addr v0, v1

    .line 22
    float-to-int v0, v0

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget-object v1, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x1f

    .line 34
    iget v0, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 36
    add-int/2addr v1, v0

    .line 37
    iget v0, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 39
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 42
    move-result v0

    .line 43
    int-to-long v2, v0

    .line 44
    mul-int/lit8 v1, v1, 0x1f

    .line 46
    const/16 v0, 0x20

    .line 48
    ushr-long v4, v2, v0

    .line 50
    xor-long/2addr v2, v4

    .line 51
    long-to-int v0, v2

    .line 52
    add-int/2addr v1, v0

    .line 53
    mul-int/lit8 v1, v1, 0x1f

    .line 55
    iget v0, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 57
    add-int/2addr v1, v0

    .line 58
    return v1
.end method
