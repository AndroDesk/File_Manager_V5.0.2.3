.class public final enum Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;
.super Ljava/lang/Enum;
.source "Mp4RatingValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

.field public static final enum CLEAN:Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

.field public static final enum EXPLICIT:Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;


# instance fields
.field private description:Ljava/lang/String;

.field private id:I


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    .line 3
    const-string v1, "CLEAN"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "Clean"

    .line 8
    const/4 v4, 0x2

    .line 9
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 12
    sput-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->CLEAN:Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    .line 14
    new-instance v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    .line 16
    const-string v3, "EXPLICIT"

    .line 18
    const/4 v5, 0x1

    .line 19
    const-string v6, "Explicit"

    .line 21
    const/4 v7, 0x4

    .line 22
    invoke-direct {v1, v3, v5, v6, v7}, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 25
    sput-object v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->EXPLICIT:Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    .line 27
    new-array v3, v4, [Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    .line 29
    aput-object v0, v3, v2

    .line 31
    aput-object v1, v3, v5

    .line 33
    sput-object v3, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->$VALUES:[Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    .line 35
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->description:Ljava/lang/String;

    .line 6
    iput p4, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->id:I

    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->$VALUES:[Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->description:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->id:I

    .line 3
    return v0
.end method
