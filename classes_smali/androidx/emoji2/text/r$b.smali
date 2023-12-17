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
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/text/r$a;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/text/Spannable;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Landroid/text/PrecomputedText;

    .line 3
    if-nez v0, :cond_b

    .line 5
    instance-of p1, p1, Lk0/c;

    .line 7
    if-eqz p1, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 p1, 0x1

    .line 13
    :goto_c
    return p1
.end method
