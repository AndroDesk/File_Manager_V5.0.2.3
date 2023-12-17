.class public final Lu0/f;
.super Ljava/lang/Object;
.source "EmojiTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/f$a;,
        Lu0/f$c;,
        Lu0/f$b;
    }
.end annotation


# instance fields
.field public final a:Lu0/f$b;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-eqz p1, :cond_d

    .line 6
    new-instance v0, Lu0/f$c;

    .line 8
    invoke-direct {v0, p1}, Lu0/f$c;-><init>(Landroid/widget/TextView;)V

    .line 11
    iput-object v0, p0, Lu0/f;->a:Lu0/f$b;

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    .line 16
    const-string v0, "textView cannot be null"

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1
.end method
