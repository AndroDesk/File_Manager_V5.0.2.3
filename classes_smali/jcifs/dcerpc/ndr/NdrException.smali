.class public Ljcifs/dcerpc/ndr/NdrException;
.super Ljava/io/IOException;
.source "NdrException.java"


# static fields
.field public static final INVALID_CONFORMANCE:Ljava/lang/String; = "invalid array conformance"

.field public static final NO_NULL_REF:Ljava/lang/String; = "ref pointer cannot be null"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method
