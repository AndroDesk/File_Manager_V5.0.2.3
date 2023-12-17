.class public Lmiuix/theme/token/BlurToken$BlendMode$Light;
.super Ljava/lang/Object;
.source "BlurToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/theme/token/BlurToken$BlendMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Light"
.end annotation


# static fields
.field public static final DEFAULT:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Light;->DEFAULT:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x12
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
