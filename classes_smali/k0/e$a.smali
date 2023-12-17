.class public final Lk0/e$a;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"

# interfaces
.implements Lk0/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lk0/e$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lk0/e$a;

    .line 3
    invoke-direct {v0}, Lk0/e$a;-><init>()V

    .line 6
    sput-object v0, Lk0/e$a;->a:Lk0/e$a;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    add-int/2addr p2, v0

    .line 3
    const/4 v1, 0x2

    .line 4
    move v2, v0

    .line 5
    move v3, v1

    .line 6
    :goto_5
    if-ge v2, p2, :cond_25

    .line 8
    if-ne v3, v1, :cond_25

    .line 10
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 13
    move-result v3

    .line 14
    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    .line 17
    move-result v3

    .line 18
    sget-object v4, Lk0/e;->a:Lk0/e$d;

    .line 20
    const/4 v4, 0x1

    .line 21
    if-eqz v3, :cond_21

    .line 23
    if-eq v3, v4, :cond_1f

    .line 25
    if-eq v3, v1, :cond_1f

    .line 27
    packed-switch v3, :pswitch_data_26

    .line 30
    move v3, v1

    .line 31
    goto :goto_22

    .line 32
    :cond_1f
    :pswitch_1f  #0x10, 0x11
    move v3, v0

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    :pswitch_21  #0xe, 0xf
    move v3, v4

    .line 35
    :goto_22
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_5

    .line 38
    :cond_25
    return v3

    .line 39
    :pswitch_data_26
    .packed-switch 0xe
        :pswitch_21  #0000000e
        :pswitch_21  #0000000f
        :pswitch_1f  #00000010
        :pswitch_1f  #00000011
    .end packed-switch
.end method
