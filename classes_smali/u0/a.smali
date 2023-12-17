.class public final Lu0/a;
.super Ljava/lang/Object;
.source "EmojiEditTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/a$a;,
        Lu0/a$b;
    }
.end annotation


# instance fields
.field public final a:Lu0/a$a;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-eqz p1, :cond_d

    .line 6
    new-instance v0, Lu0/a$a;

    .line 8
    invoke-direct {v0, p1}, Lu0/a$a;-><init>(Landroid/widget/EditText;)V

    .line 11
    iput-object v0, p0, Lu0/a;->a:Lu0/a$a;

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    .line 16
    const-string v0, "editText cannot be null"

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1
.end method
