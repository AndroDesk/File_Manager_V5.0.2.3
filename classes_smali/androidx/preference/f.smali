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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/preference/f;->b:J

    iput-object p1, p0, Landroidx/preference/f;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_preferences"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/f;->f:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/preference/f;->c:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/SharedPreferences$Editor;
    .registers 2

    iget-boolean v0, p0, Landroidx/preference/f;->e:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/preference/f;->d:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroidx/preference/f;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/f;->d:Landroid/content/SharedPreferences$Editor;

    :cond_12
    iget-object v0, p0, Landroidx/preference/f;->d:Landroid/content/SharedPreferences$Editor;

    return-object v0

    :cond_15
    invoke-virtual {p0}, Landroidx/preference/f;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/content/SharedPreferences;
    .registers 4

    iget-object v0, p0, Landroidx/preference/f;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroidx/preference/f;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/preference/f;->f:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/f;->c:Landroid/content/SharedPreferences;

    :cond_f
    iget-object v0, p0, Landroidx/preference/f;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final c(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/f;->e:Z

    new-instance v0, Landroidx/preference/e;

    invoke-direct {v0, p1, p0}, Landroidx/preference/e;-><init>(Landroid/content/Context;Landroidx/preference/f;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    :try_start_10
    invoke-virtual {v0, p1, p3}, Landroidx/preference/e;->c(Landroid/content/res/XmlResourceParser;Landroidx/preference/PreferenceGroup;)Landroidx/preference/PreferenceGroup;

    move-result-object p2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_27

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    check-cast p2, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/f;)V

    const/4 p1, 0x0

    iget-object p3, p0, Landroidx/preference/f;->d:Landroid/content/SharedPreferences$Editor;

    if-eqz p3, :cond_24

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_24
    iput-boolean p1, p0, Landroidx/preference/f;->e:Z

    return-object p2

    :catchall_27
    move-exception p2

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    throw p2
.end method

.method public setOnDisplayPreferenceDialogListener(Landroidx/preference/f$a;)V
    .registers 2

    iput-object p1, p0, Landroidx/preference/f;->i:Landroidx/preference/f$a;

    return-void
.end method

.method public setOnNavigateToScreenListener(Landroidx/preference/f$b;)V
    .registers 2

    iput-object p1, p0, Landroidx/preference/f;->j:Landroidx/preference/f$b;

    return-void
.end method

.method public setOnPreferenceTreeClickListener(Landroidx/preference/f$c;)V
    .registers 2

    iput-object p1, p0, Landroidx/preference/f;->h:Landroidx/preference/f$c;

    return-void
.end method
