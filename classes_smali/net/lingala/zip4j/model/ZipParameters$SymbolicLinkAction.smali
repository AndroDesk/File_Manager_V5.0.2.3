.class public final enum Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
.super Ljava/lang/Enum;
.source "ZipParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/model/ZipParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SymbolicLinkAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

.field public static final enum INCLUDE_LINK_AND_LINKED_FILE:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

.field public static final enum INCLUDE_LINK_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

.field public static final synthetic a:[Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 3
    const-string v1, "INCLUDE_LINK_ONLY"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 11
    new-instance v1, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 13
    const-string v3, "INCLUDE_LINKED_FILE_ONLY"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 21
    new-instance v3, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 23
    const-string v5, "INCLUDE_LINK_AND_LINKED_FILE"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_AND_LINKED_FILE:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 34
    aput-object v0, v5, v2

    .line 36
    aput-object v1, v5, v4

    .line 38
    aput-object v3, v5, v6

    .line 40
    sput-object v5, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->a:[Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
    .registers 2

    .line 1
    const-class v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 9
    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
    .registers 1

    .line 1
    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->a:[Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 3
    invoke-virtual {v0}, [Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 9
    return-object v0
.end method
