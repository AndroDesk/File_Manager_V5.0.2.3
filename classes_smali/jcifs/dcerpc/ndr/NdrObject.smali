.class public abstract Ljcifs/dcerpc/ndr/NdrObject;
.super Ljava/lang/Object;
.source "NdrObject.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
.end method

.method public abstract encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
.end method
