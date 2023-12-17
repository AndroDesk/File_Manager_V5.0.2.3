.class public synthetic Landroid/content/pm/ShortcutInfo$Builder;
.super Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native synthetic build()Landroid/content/pm/ShortcutInfo;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;
    .param p1  # Landroid/content/ComponentName;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic setCategories(Ljava/util/Set;)Landroid/content/pm/ShortcutInfo$Builder;
    .annotation build Landroid/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/ShortcutInfo$Builder;"
        }
    .end annotation
.end method

.method public native synthetic setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic setExcludedFromSurfaces(I)Landroid/content/pm/ShortcutInfo$Builder;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;
    .param p1  # Landroid/os/PersistableBundle;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;
    .param p1  # Landroid/content/Intent;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;
    .param p1  # [Landroid/content/Intent;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic setRank(I)Landroid/content/pm/ShortcutInfo$Builder;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method
