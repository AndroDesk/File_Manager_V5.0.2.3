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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IZI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->encoded:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->encodedContents:Ljava/nio/ByteBuffer;

    iput p3, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagClass:I

    iput p5, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagNumber:I

    iput-boolean p4, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->isConstructed:Z

    return-void
.end method
