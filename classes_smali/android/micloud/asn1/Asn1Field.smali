.class public Landroid/micloud/asn1/Asn1Field;
.super Ljava/lang/Object;
.source "Asn1Field.java"


# static fields
.field public static final TYPE_ASN1_ENCODED:I

.field public static final TYPE_ASN1_SEQUENCE:I

.field public static final TYPE_INTEGER:I

.field public static final TYPE_OBJECT_IDENTIFIER:I

.field public static final TYPE_OCTET_STRING:I


# instance fields
.field public type:I

.field public value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroid/micloud/asn1/Asn1Field;->TYPE_ASN1_ENCODED:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroid/micloud/asn1/Asn1Field;->TYPE_ASN1_SEQUENCE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroid/micloud/asn1/Asn1Field;->TYPE_INTEGER:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroid/micloud/asn1/Asn1Field;->TYPE_OBJECT_IDENTIFIER:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroid/micloud/asn1/Asn1Field;->TYPE_OCTET_STRING:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/micloud/asn1/Asn1Field;->type:I

    iput-object p2, p0, Landroid/micloud/asn1/Asn1Field;->value:Ljava/lang/Object;

    return-void
.end method
