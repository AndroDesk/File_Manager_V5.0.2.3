.class public final Landroidx/emoji2/text/l;
.super Landroidx/emoji2/text/f$c;
.source "FontRequestEmojiCompatConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/l$a;,
        Landroidx/emoji2/text/l$b;
    }
.end annotation


# static fields
.field public static final d:Landroidx/emoji2/text/l$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/emoji2/text/l$a;

    .line 3
    invoke-direct {v0}, Landroidx/emoji2/text/l$a;-><init>()V

    .line 6
    sput-object v0, Landroidx/emoji2/text/l;->d:Landroidx/emoji2/text/l$a;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lj0/f;)V
    .registers 4

    .line 1
    new-instance v0, Landroidx/emoji2/text/l$b;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/emoji2/text/l$b;-><init>(Landroid/content/Context;Lj0/f;)V

    .line 6
    invoke-direct {p0, v0}, Landroidx/emoji2/text/f$c;-><init>(Landroidx/emoji2/text/f$g;)V

    .line 9
    return-void
.end method
