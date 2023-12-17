.class public final Landroidx/preference/f;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/f$b;,
        Landroidx/preference/f$a;,
        Landroidx/preference/f$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:J

.field public c:Landroid/content/SharedPreferences;

.field public d:Landroid/content/SharedPreferences$Editor;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Landroidx/preference/PreferenceScreen;

.field public h:Landroidx/preference/f$c;

.field public i:Landroidx/preference/f$a;

.field public j:Landroidx/preference/f$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Landroidx/preference/f;->b:J

    .line 8
    iput-object p1, p0, Landroidx/preference/f;->a:Landroid/content/Context;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string p1, "_preferences"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Landroidx/preference/f;->f:Ljava/lang/String;

    .line 33
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Landroidx/preference/f;->c:Landroid/content/SharedPreferences;

    .line 36
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/preference/f;->e:Z

    .line 3
    if-eqz v0, :cond_15

    .line 5
    iget-object v0, p0, Landroidx/preference/f;->d:Landroid/content/SharedPreferences$Editor;

    .line 7
    if-nez v0, :cond_12

    .line 9
    invoke-virtual {p0}, Landroidx/preference/f;->b()Landroid/content/SharedPreferences;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/preference/f;->d:Landroid/content/SharedPreferences$Editor;

    .line 19
    :cond_12
    iget-object v0, p0, Landroidx/preference/f;->d:Landroid/content/SharedPreferences$Editor;

    .line 21
    return-object v0

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroidx/preference/f;->b()Landroid/content/SharedPreferences;

    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public final b()Landroid/content/SharedPreferences;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/preference/f;->c:Landroid/content/SharedPreferences;

    .line 3
    if-nez v0, :cond_f

    .line 5
    iget-object v0, p0, Landroidx/preference/f;->a:Landroid/content/Context;

    .line 7
    iget-object v1, p0, Landroidx/preference/f;->f:Ljava/lang/String;

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroidx/preference/f;->c:Landroid/content/SharedPreferences;

    .line 16
    :cond_f
    iget-object v0, p0, Landroidx/preference/f;->c:Landroid/content/SharedPreferences;

    .line 18
    return-object v0
.end method

.method public final c(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/preference/f;->e:Z

    .line 4
    new-instance v0, Landroidx/preference/e;

    .line 6
    invoke-direct {v0, p1, p0}, Landroidx/preference/e;-><init>(Landroid/content/Context;Landroidx/preference/f;)V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 16
    move-result-object p1

    .line 17
    :try_start_10
    invoke-virtual {v0, p1, p3}, Landroidx/preference/e;->c(Landroid/content/res/XmlResourceParser;Landroidx/preference/PreferenceGroup;)Landroidx/preference/PreferenceGroup;

    .line 20
    move-result-object p2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_27

    .line 21
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 24
    check-cast p2, Landroidx/preference/PreferenceScreen;

    .line 26
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/f;)V

    .line 29
    const/4 p1, 0x0

    .line 30
    iget-object p3, p0, Landroidx/preference/f;->d:Landroid/content/SharedPreferences$Editor;

    .line 32
    if-eqz p3, :cond_24

    .line 34
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    :cond_24
    iput-boolean p1, p0, Landroidx/preference/f;->e:Z

    .line 39
    return-object p2

    .line 40
    :catchall_27
    move-exception p2

    .line 41
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 44
    throw p2
.end method

.method public setOnDisplayPreferenceDialogListener(Landroidx/preference/f$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/f;->i:Landroidx/preference/f$a;

    .line 3
    return-void
.end method

.method public setOnNavigateToScreenListener(Landroidx/preference/f$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/f;->j:Landroidx/preference/f$b;

    .line 3
    return-void
.end method

.method public setOnPreferenceTreeClickListener(Landroidx/preference/f$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/f;->h:Landroidx/preference/f$c;

    .line 3
    return-void
.end method
