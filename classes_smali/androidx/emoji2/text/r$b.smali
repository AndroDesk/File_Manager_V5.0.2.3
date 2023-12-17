.class public final Landroidx/emoji2/text/r$b;
.super Landroidx/emoji2/text/r$a;
.source "UnprecomputeTextOnModificationSpannable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/emoji2/text/r$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/text/Spannable;)Z
    .registers 3

    instance-of v0, p1, Landroid/text/PrecomputedText;

    if-nez v0, :cond_b

    instance-of p1, p1, Lk0/c;

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method
