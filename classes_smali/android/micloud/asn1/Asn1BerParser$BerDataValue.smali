.class Landroid/micloud/asn1/Asn1BerParser$BerDataValue;
.super Ljava/lang/Object;
.source "Asn1BerParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/micloud/asn1/Asn1BerParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BerDataValue"
.end annotation


# instance fields
.field public final encoded:Ljava/nio/ByteBuffer;

.field public final encodedContents:Ljava/nio/ByteBuffer;

.field public final isConstructed:Z

.field public final tagClass:I

.field public final tagNumber:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IZI)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->encoded:Ljava/nio/ByteBuffer;

    .line 6
    iput-object p2, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->encodedContents:Ljava/nio/ByteBuffer;

    .line 8
    iput p3, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagClass:I

    .line 10
    iput p5, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagNumber:I

    .line 12
    iput-boolean p4, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->isConstructed:Z

    .line 14
    return-void
.end method
