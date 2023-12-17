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

    new-instance v0, Lk0/e$a;

    invoke-direct {v0}, Lk0/e$a;-><init>()V

    sput-object v0, Lk0/e$a;->a:Lk0/e$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .registers 8

    const/4 v0, 0x0

    add-int/2addr p2, v0

    const/4 v1, 0x2

    move v2, v0

    move v3, v1

    :goto_5
    if-ge v2, p2, :cond_25

    if-ne v3, v1, :cond_25

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v3

    sget-object v4, Lk0/e;->a:Lk0/e$d;

    const/4 v4, 0x1

    if-eqz v3, :cond_21

    if-eq v3, v4, :cond_1f

    if-eq v3, v1, :cond_1f

    packed-switch v3, :pswitch_data_26

    move v3, v1

    goto :goto_22

    :cond_1f
    :pswitch_1f  #0x10, 0x11
    move v3, v0

    goto :goto_22

    :cond_21
    :pswitch_21  #0xe, 0xf
    move v3, v4

    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_25
    return v3

    :pswitch_data_26
    .packed-switch 0xe
        :pswitch_21  #0000000e
        :pswitch_21  #0000000f
        :pswitch_1f  #00000010
        :pswitch_1f  #00000011
    .end packed-switch
.end method
