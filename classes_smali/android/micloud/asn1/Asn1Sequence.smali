.class public Landroid/micloud/asn1/Asn1Sequence;
.super Ljava/lang/Object;
.source "Asn1Sequence.java"


# instance fields
.field public fieldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/micloud/asn1/Asn1Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    .line 11
    return-void
.end method

.method public static fromBerEncode([B)Landroid/micloud/asn1/Asn1Sequence;
    .registers 1

    .line 1
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->parse([B)Landroid/micloud/asn1/Asn1Sequence;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public getDerEncode()[B
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/micloud/asn1/Asn1DerEncoder;->encode(Landroid/micloud/asn1/Asn1Sequence;)[B

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
