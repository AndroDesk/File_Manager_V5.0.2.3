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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_d

    new-instance v0, Lu0/f$c;

    invoke-direct {v0, p1}, Lu0/f$c;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lu0/f;->a:Lu0/f$b;

    return-void

    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "textView cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
