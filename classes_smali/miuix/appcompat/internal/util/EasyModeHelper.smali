.class public Lmiuix/appcompat/internal/util/EasyModeHelper;
.super Ljava/lang/Object;
.source "EasyModeHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isInEasyMode(Landroid/content/Context;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_11

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object p0

    .line 8
    const-string v1, "elderly_mode"

    .line 10
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result p0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne p0, v1, :cond_11

    .line 17
    move v0, v1

    .line 18
    :cond_11
    return v0
.end method

.method public static updateTextViewSize(Landroid/widget/TextView;)V
    .registers 3

    .line 1
    if-eqz p0, :cond_12

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lmiuix/appcompat/internal/util/EasyModeHelper;->isInEasyMode(Landroid/content/Context;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_12

    .line 13
    const/4 v0, 0x0

    .line 14
    const/high16 v1, 0x42b00000  # 88.0f

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    :cond_12
    return-void
.end method
