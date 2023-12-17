.class public final enum Lorg/jaudiotagger/fix/Fix;
.super Ljava/lang/Enum;
.source "Fix.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/fix/Fix;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/fix/Fix;

.field public static final enum FIX_OGG_VORBIS_COMMENT_NOT_COUNTING_EMPTY_COLUMNS:Lorg/jaudiotagger/fix/Fix;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lorg/jaudiotagger/fix/Fix;

    const-string v1, "FIX_OGG_VORBIS_COMMENT_NOT_COUNTING_EMPTY_COLUMNS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/fix/Fix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/fix/Fix;->FIX_OGG_VORBIS_COMMENT_NOT_COUNTING_EMPTY_COLUMNS:Lorg/jaudiotagger/fix/Fix;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/jaudiotagger/fix/Fix;

    aput-object v0, v1, v2

    sput-object v1, Lorg/jaudiotagger/fix/Fix;->$VALUES:[Lorg/jaudiotagger/fix/Fix;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/fix/Fix;
    .registers 2

    const-class v0, Lorg/jaudiotagger/fix/Fix;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/fix/Fix;

    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/fix/Fix;
    .registers 1

    sget-object v0, Lorg/jaudiotagger/fix/Fix;->$VALUES:[Lorg/jaudiotagger/fix/Fix;

    invoke-virtual {v0}, [Lorg/jaudiotagger/fix/Fix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/fix/Fix;

    return-object v0
.end method
