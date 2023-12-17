.class public final enum Lkotlin/reflect/KVisibility;
.super Ljava/lang/Enum;
.source "KVisibility.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/KVisibility;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INTERNAL:Lkotlin/reflect/KVisibility;

.field public static final enum PRIVATE:Lkotlin/reflect/KVisibility;

.field public static final enum PROTECTED:Lkotlin/reflect/KVisibility;

.field public static final enum PUBLIC:Lkotlin/reflect/KVisibility;

.field public static final synthetic a:[Lkotlin/reflect/KVisibility;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lkotlin/reflect/KVisibility;

    .line 3
    const-string v1, "PUBLIC"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lkotlin/reflect/KVisibility;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lkotlin/reflect/KVisibility;->PUBLIC:Lkotlin/reflect/KVisibility;

    .line 11
    new-instance v1, Lkotlin/reflect/KVisibility;

    .line 13
    const-string v3, "PROTECTED"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lkotlin/reflect/KVisibility;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lkotlin/reflect/KVisibility;->PROTECTED:Lkotlin/reflect/KVisibility;

    .line 21
    new-instance v3, Lkotlin/reflect/KVisibility;

    .line 23
    const-string v5, "INTERNAL"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lkotlin/reflect/KVisibility;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lkotlin/reflect/KVisibility;->INTERNAL:Lkotlin/reflect/KVisibility;

    .line 31
    new-instance v5, Lkotlin/reflect/KVisibility;

    .line 33
    const-string v7, "PRIVATE"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lkotlin/reflect/KVisibility;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lkotlin/reflect/KVisibility;->PRIVATE:Lkotlin/reflect/KVisibility;

    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lkotlin/reflect/KVisibility;

    .line 44
    aput-object v0, v7, v2

    .line 46
    aput-object v1, v7, v4

    .line 48
    aput-object v3, v7, v6

    .line 50
    aput-object v5, v7, v8

    .line 52
    sput-object v7, Lkotlin/reflect/KVisibility;->a:[Lkotlin/reflect/KVisibility;

    .line 54
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

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/KVisibility;
    .registers 2

    const-class v0, Lkotlin/reflect/KVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KVisibility;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/KVisibility;
    .registers 1

    sget-object v0, Lkotlin/reflect/KVisibility;->a:[Lkotlin/reflect/KVisibility;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/KVisibility;

    return-object v0
.end method
