.class public abstract Landroidx/appcompat/app/a$d;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final INVALID_POSITION:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/appcompat/app/a$d;->INVALID_POSITION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContentDescription()Ljava/lang/CharSequence;
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getPosition()I
.end method

.method public abstract getTag()Ljava/lang/Object;
.end method

.method public abstract getText()Ljava/lang/CharSequence;
.end method

.method public abstract select()V
.end method

.method public abstract setContentDescription(I)Landroidx/appcompat/app/a$d;
.end method

.method public abstract setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$d;
.end method

.method public abstract setCustomView(I)Landroidx/appcompat/app/a$d;
.end method

.method public abstract setCustomView(Landroid/view/View;)Landroidx/appcompat/app/a$d;
.end method

.method public abstract setIcon(I)Landroidx/appcompat/app/a$d;
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/a$d;
.end method

.method public abstract setTabListener(Landroidx/appcompat/app/a$e;)Landroidx/appcompat/app/a$d;
.end method

.method public abstract setTag(Ljava/lang/Object;)Landroidx/appcompat/app/a$d;
.end method

.method public abstract setText(I)Landroidx/appcompat/app/a$d;
.end method

.method public abstract setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$d;
.end method
