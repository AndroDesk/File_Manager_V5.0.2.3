.class public Lcom/miui/maml/data/DarkModeVariableUpdater;
.super Lcom/miui/maml/data/NotifierVariableUpdater;
.source "DarkModeVariableUpdater.java"


# instance fields
.field private mDarkMode:Lcom/miui/maml/data/IndexedVariable;

.field private mDarkWallpaperMode:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_DARK_MODE:Ljava/lang/String;

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/NotifierVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 18
    const-string v1, "__darkmode"

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {p1, v1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 24
    iput-object p1, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkMode:Lcom/miui/maml/data/IndexedVariable;

    .line 26
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 28
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 38
    const-string v1, "__darkmode_wallpaper"

    .line 40
    invoke-direct {p1, v1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 43
    iput-object p1, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkWallpaperMode:Lcom/miui/maml/data/IndexedVariable;

    .line 45
    return-void
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 5

    .line 1
    instance-of p1, p3, Ljava/lang/Integer;

    .line 3
    if-eqz p1, :cond_47

    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 7
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result p1

    .line 11
    and-int/lit8 p2, p1, 0x1

    .line 13
    const/4 p3, 0x1

    .line 14
    if-ne p2, p3, :cond_17

    .line 16
    iget-object p2, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkMode:Lcom/miui/maml/data/IndexedVariable;

    .line 18
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    invoke-virtual {p2, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 23
    goto :goto_1e

    .line 24
    :cond_17
    iget-object p2, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkMode:Lcom/miui/maml/data/IndexedVariable;

    .line 26
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 28
    invoke-virtual {p2, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 31
    :goto_1e
    const/4 p2, 0x3

    .line 32
    and-int/2addr p1, p2

    .line 33
    if-ne p1, p2, :cond_31

    .line 35
    iget-object p1, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkWallpaperMode:Lcom/miui/maml/data/IndexedVariable;

    .line 37
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    invoke-virtual {p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, p3}, Lcom/miui/maml/ScreenElementRoot;->setDarkWallpaperMode(Z)V

    .line 49
    goto :goto_40

    .line 50
    :cond_31
    iget-object p1, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkWallpaperMode:Lcom/miui/maml/data/IndexedVariable;

    .line 52
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    invoke-virtual {p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 60
    move-result-object p1

    .line 61
    const/4 p2, 0x0

    .line 62
    invoke-virtual {p1, p2}, Lcom/miui/maml/ScreenElementRoot;->setDarkWallpaperMode(Z)V

    .line 65
    :goto_40
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 72
    :cond_47
    return-void
.end method
