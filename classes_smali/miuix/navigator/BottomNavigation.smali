.class public interface abstract Lmiuix/navigator/BottomNavigation;
.super Ljava/lang/Object;
.source "BottomNavigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;
    }
.end annotation


# static fields
.field public static final LAYOUT_STYLE_COMPACT:I = 0x0

.field public static final LAYOUT_STYLE_MASK_WIDE:I = 0x1

.field public static final LAYOUT_STYLE_WIDE_LAND:I = 0x3

.field public static final LAYOUT_STYLE_WIDE_PORT:I = 0x1


# virtual methods
.method public abstract getMenu()Landroid/view/Menu;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract inflateMenu(I)V
.end method

.method public abstract setLayoutStyle(I)V
.end method
